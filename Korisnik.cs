using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace B13
{
    public class Korisnik
    {

        /*MOzete promeniti nazive property-ja da odgovaraju po imenu i velicini slova u header-u tabele prema slici zadatka*/

        public int sifra { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public string adresa { get; set; }
        public string mesto { get; set; }
        public string broj { get; set; }
        public string email { get; set; }

        public Korisnik(int sifra, string ime, string prezime, string adresa, string mesto, string broj, string email)
        {
            this.sifra = sifra;
            this.ime = ime;
            this.prezime = prezime;
            this.adresa = adresa;
            this.mesto = mesto;
            this.broj = broj;
            this.email = email;
        }

        public static List<Korisnik> ucitajIzFajla(StreamReader r)
        {
            List<Korisnik> sviKorisnici = new List<Korisnik>();
            while (!r.EndOfStream)
            {
                string[] p = r.ReadLine().Split('|');
                Korisnik k = new Korisnik(int.Parse(p[0]), p[1], p[2], p[3], p[4], p[5], p[6]);
                sviKorisnici.Add(k);
            }
            return sviKorisnici;
        }

    }
}