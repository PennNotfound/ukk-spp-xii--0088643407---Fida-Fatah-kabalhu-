using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace uprak_pbgtm.config
{
    internal class koneksi
    {
        public static MySqlConnection GetConnection()
        {
            string konfig = "server=localhost;port=3306;database=db_spp_sekolah_xii;username=root;password=";
            MySqlConnection koneksi = new MySqlConnection(konfig);
            return koneksi;
        }

       
    }
}
