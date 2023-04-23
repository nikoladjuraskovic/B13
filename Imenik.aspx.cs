using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B13
{
    public partial class Imenik : System.Web.UI.Page
    {

        List<Korisnik> sviKorisnici;

        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader r = new StreamReader(Server.MapPath("imenik.txt")); sviKorisnici = Korisnik.ucitajIzFajla(r);
            r.Close();

            if (!IsPostBack)
            {
                DropDownList1.Items.Add("");
                foreach (Korisnik x in sviKorisnici)
                {
                    if (!DropDownList1.Items.Contains(new ListItem(x.mesto)))
                        DropDownList1.Items.Add(x.mesto);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<Korisnik> prikaz = new List<Korisnik>();
            foreach (Korisnik x in sviKorisnici)
            {
                bool odgovara = true;

                if (TextBox1.Text != "" && !x.ime.ToLower().StartsWith(TextBox1.Text.ToLower()))
                    odgovara = false;

                if (TextBox2.Text != "" && !x.prezime.ToLower().StartsWith(TextBox2.Text.ToLower()))
                    odgovara = false;

                if (TextBox3.Text != "" && !x.adresa.ToLower().StartsWith(TextBox3.Text.ToLower()))
                    odgovara = false;

                if (TextBox4.Text != "" && !x.broj.StartsWith(TextBox4.Text))
                    odgovara = false;

                if (DropDownList1.SelectedValue != "" && x.mesto != DropDownList1.SelectedValue)
                    odgovara = false;

                if (odgovara)
                    prikaz.Add(x);
            }
            GridView1.DataSource = prikaz;
            GridView1.DataBind();
        }
    }
}