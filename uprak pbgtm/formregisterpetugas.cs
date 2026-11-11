using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace uprak_pbgtm
{
    public partial class formregisterpetugas : Form
    {
        public formregisterpetugas()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(textBox1.Text) ||
                string.IsNullOrWhiteSpace(textBox2.Text) ||
                string.IsNullOrWhiteSpace(textBox3.Text) ||
                string.IsNullOrWhiteSpace(textBox4.Text) ||
                comboBox1.SelectedItem == null)
            {
                MessageBox.Show("Seluruh field wajib terisi!", "Validasi Gagal", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (textBox3.Text.Length < 6)
            {
                MessageBox.Show("Kata sandi minimal harus 6 karakter!", "Validasi Gagal", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (textBox3.Text != textBox4.Text)
            {
                MessageBox.Show("Konfirmasi kata sandi tidak cocok!", "Validasi Gagal", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            MessageBox.Show("Registrasi akun petugas berhasil!", "Sukses", MessageBoxButtons.OK, MessageBoxIcon.Information);
            FormLogin loginForm = new FormLogin();
            loginForm.Show();
            this.Hide();
        }

        private void formregisterpetugas_Load(object sender, EventArgs e)
        {

        }
    }
}

