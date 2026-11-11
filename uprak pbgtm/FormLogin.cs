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
    public partial class FormLogin : Form
    {
        string konfigurasi = "server=localhost;port=3306;database=db_spp_sekolah_xii;username=root;password=";
        public FormLogin()
        {
            InitializeComponent();
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {
          
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string username = textBox1.Text;
            string password = textBox2.Text;
           

            //validasi 
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Username and password tidak boleh kosong!!","error",MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;

                textBox1.Focus();
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            formregisterpetugas formregisterpetugas = new formregisterpetugas();
            formregisterpetugas.Show();

            FormLogin well = new FormLogin();
            this.Hide();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            textBox2.PasswordChar = '*';
        }

        private void button2_Click(object sender, EventArgs e)
        {
          "dibagian form login s"
        }
    }
}
