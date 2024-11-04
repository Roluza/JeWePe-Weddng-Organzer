<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require 'vendor/autoload.php';

class Pesanan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('username'))) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"><strong>Upss </strong>Anda tidak memiliki Akses, silahkan login!</div>');
            redirect('login');
        }
        $this->load->model('pesanan_model');
    }

    public function index()
    {
        $data = array(
            'title' => 'JeWePe Wedding Organizer',
            'page' => 'admin/pesanan',
            'getAllPesanan' => $this->pesanan_model->get_all_pesanan()->result()
        );

        $this->load->view('admin/template/main', $data);
    }

    // public function updateStatus()
    // {
    //     if ($this->input->get()) {
    //         $get = $this->input->get();
    //         $cek_data = $this->pesanan_model->get_pesanan_by_id($get['id'])->num_rows();

    //         if ($cek_data > 0) {
    //             // var_dump($get);
    //             // die();
    //             $datetime = date("Y-m-d H:i:s");
    //             $data = array(
    //                 'status' => $get['status'],
    //                 'user_id' => $this->session->userdata('user_id'),
    //                 'updated_at' => $datetime,
    //             );
    //             $update = $this->pesanan_model->update($get['id'], $data);

    //             if ($update) {
    //                 $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert"><strong>Success </strong>Status Berhasil di Ubah!<i class="remove ti-close" data-dismiss="alert"></i></div>');
    //                 redirect('admin/Pesanan');
    //             } else {
    //                 $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert"><strong>Failed </strong>Status Gagal di Ubah!<i class="remove ti-close" data-dismiss="alert"></i></div>');
    //                 redirect('admin/Pesanan');
    //             }
    //         } else {
    //             redirect('admin/Pesanan');
    //         }
    //     } else {
    //         redirect('admin/Pesanan');
    //     }
    // }

    public function updateStatus()
    {
        if ($this->input->get()) {
            $get = $this->input->get();
            $cek_data = $this->pesanan_model->get_pesanan_by_id($get['id'])->row();

            if ($cek_data) {
                $datetime = date("Y-m-d H:i:s");
                $data = array(
                    'status' => $get['status'],
                    'user_id' => $this->session->userdata('user_id'),
                    'updated_at' => $datetime,
                );
                $update = $this->pesanan_model->update($get['id'], $data);

                if ($update) {
                    // Prepare email details
                    $toEmail = $cek_data->email;
                    if ($get['status'] == 'approved') {
                        $subject = 'Order Approved';
                        $body = 'Dear ' . $cek_data->name . ',<br>Your order has been approved.<br>Thank you for choosing JeWePe Wedding Organizer.';
                    } elseif ($get['status'] == 'reject') {
                        $subject = 'Order Rejected';
                        $body = 'Dear ' . $cek_data->name . ',<br>Your order has been rejected.<br>Thank you for your understanding.';
                    } else {
                        $subject = 'Order Status Updated';
                        $body = 'Dear ' . $cek_data->name . ',<br>Your order status has been updated.<br>Thank you.';
                    }

                    // Send email
                    $this->sendEmail($toEmail, $subject, $body);

                    // Set success message and redirect
                    $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert"><strong>Success </strong>Status Berhasil di Ubah!<i class="remove ti-close" data-dismiss="alert"></i></div>');
                    redirect('admin/Pesanan');
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert"><strong>Failed </strong>Status Gagal di Ubah!<i class="remove ti-close" data-dismiss="alert"></i></div>');
                    redirect('admin/Pesanan');
                }
            } else {
                redirect('admin/Pesanan');
            }
        } else {
            redirect('admin/Pesanan');
        }
    }



    private function sendEmail($toEmail, $subject, $body)
    {
        $mail = new PHPMailer(true);

        try {
            // Server settings
            $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com'; // Ganti dengan host SMTP Anda
            $mail->SMTPAuth   = true;
            $mail->Username   = 'rofyanmafaza33@gmail.com'; // Ganti dengan email SMTP Anda
            $mail->Password   = 'shxupzdmrgmyzkrn'; // Ganti dengan password SMTP Anda
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;

            // Recipient
            $mail->setFrom('asdfghl@gmail.com', 'JeWePe Wedding Organizer');
            $mail->addAddress($toEmail);

            // Content
            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body    = $body;

            $mail->send();
        } catch (Exception $e) {
            // Handle error
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }




    public function delete()
    {
        if (!empty($this->input->get('id', true))) {
            $delete = $this->pesanan_model->delete_by_id($this->input->get('id', true));

            if ($delete) {
                $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert"><strong>Success </strong>Data Berhasil di Hapus!<i class="remove ti-close" data-dismiss="alert"></i></div>');
                redirect('admin/Pesanan');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert"><strong>Uppss </strong>Data Gagal di Hapus!<i class="remove ti-close" data-dismiss="alert"></i></div>');
                redirect('admin/Pesanan');
            }
        } else {
            redirect('admin/Pesanan');
        }
    }
}
