using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace U4W3D1_PreventivoAutomobile
{
    public class Macchina
    {
        public string Modello { get; set; }
        public string ImageUrl { get; set; }
        public decimal Prezzo { get; set; }

        public Macchina(string modello, string urlimmagine, decimal prezzo)
        {
            Modello = modello;
            ImageUrl = urlimmagine;
            Prezzo = prezzo;
        }
    }
}