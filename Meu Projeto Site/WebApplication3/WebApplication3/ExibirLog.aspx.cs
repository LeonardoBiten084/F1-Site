using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
   public partial class ExibirLog : System.Web.UI.Page
   {
      string caminho = HttpContext.Current.Server.MapPath("~/Log.txt");

      protected void Page_Load(object sender, EventArgs e)
      {
         LerLogs();
      }

      protected void LerLogs()
      {
         if (System.IO.File.Exists(caminho))
         {
            Logs.Text = System.IO.File.ReadAllText(caminho);
            Limpar.Visible = true;
         }
      }

      protected void Limpar_Click(object sender, EventArgs e)
      {
         if (System.IO.File.Exists(caminho))
         {
            System.IO.File.Delete(caminho);
            Logs.Text = "";
            Limpar.Visible = false;
         }
      }
   }
}