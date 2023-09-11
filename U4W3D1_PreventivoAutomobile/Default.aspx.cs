using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U4W3D1_PreventivoAutomobile
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private List<Macchina> macchine = new List<Macchina>
        {
            new Macchina("Alfa Romeo Giulia Quadrifoglio - 2.9L V6, 505 CV", "alfa.png", 70000),
            new Macchina("Audi A8 - 3.0L V6, 605 CV", "audi.png", 60000),
            new Macchina("BMW 7 Series - Vario", "bmw.png", 2500000),
            new Macchina("Bugatti Chiron - 8.0L W16, 1,500 CV", "bugatti.png", 60000),
            new Macchina("Lamborghini Huracán - 5.2L V10, 602 CV", "lambo.png", 50000),
            new Macchina("Ford Mustang Shelby GT500 - 5.2L V8, 760 CV", "mustang.png", 180000)
        };
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selezione = DropDownList1.SelectedIndex;
            for(int i= 0; i<macchine.Count; i++)
            {
                if(i == selezione)
                {
                    Macchina macchinaSelezionata = macchine[i];
                    carPic.ImageUrl = $"~/Content/img/{macchinaSelezionata.ImageUrl}";
                    carPrice.Text = $"Prezzo di partenza {macchinaSelezionata.Prezzo:C}";
                }
            }
        }

        protected void CalcolaCostoTotaleAlClick(object sender, EventArgs e)
        {
            for (int i = 0; i < macchine.Count; i++)
            {
                Macchina macchinaSelezionata = macchine[i];
                decimal costoBaseMacchina = macchinaSelezionata.Prezzo;

                decimal costoOptional = 0;
                foreach (ListItem optional in OptionalCheckBoxList.Items)
                {
                    if (optional.Selected)
                    {
                        costoOptional += decimal.Parse(optional.Value);
                    }
                }

                int anniGaranzia = Convert.ToInt32(GaranziaDropDownList.SelectedValue);
                decimal costoGaranzia = anniGaranzia * 120;

                decimal costoTotale = costoBaseMacchina + costoOptional + costoGaranzia;

                PrezzoPartenzaLabel.Text = $"Prezzo di partenza: {costoBaseMacchina:C}";
                CostoOptionalLabel.Text = $"Costo optional: {costoOptional:C}";
                CostoGaranziaLabel.Text = $"Costo garanzia: {costoGaranzia:C}";
                CostoTotaleLabel.Text = $"Costo totale: {costoTotale:C}";
            }
        }
    }


}

