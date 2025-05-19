using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
   public partial class Contato : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void Enviar_Click(object sender, EventArgs e)
      {
         // 1. validar os dados de entrada
         if (Nome.Text.Trim() == "")
         {
            Alerta.Text = "Digite seu nome";
         }
         else if (Email.Text.Trim() == "")
         {
            Alerta.Text = "Digite seru e-mail";
         }
         else if (Mensagem.Text.Trim() == "")
         {
            Alerta.Text = "Digite a mensagem";
         }
         else
         {
            try
            {
               // 2. Montar o e-mail
               // cria uma instâncial da classe 
               MailMessage mail = new MailMessage();

               mail.To.Add("contato@seudominio.com.br");

               MailAddress from = new MailAddress("contato@seudominio.com.br");

               mail.From = from;

               mail.Subject = "E-mail enviado pela pagina de contato";

               mail.Body = "Nome: " + Nome.Text.Trim() + "\n E-mail: " + Email.Text.Trim() + "\n Mensagem: " + Mensagem.Text;

               mail.Priority = MailPriority.Normal;

               mail.IsBodyHtml = false;

               // 3. Envia o e-mail
               SmtpClient smtp = new SmtpClient();

               smtp.Host = "seudominio.com.br";
               smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com.br", "suasenha");
               smtp.Send(mail);
               Nome.Text = "";
               Email.Text = "";
               Mensagem.Text = "";
               Alerta.Text = "Seu e-mail foi enviado com sucesso";
            }
            catch (Exception ex)
            {
               Alerta.Text = "Houve uma falha ao enviar o e-mail " + ex.Message;

               try
               {
                  // grava a exceção no arquivo Log.txt

                  string conteudo = DateTime.Now.ToString() + " - " + ex.Message + "\n";
                  string caminho = Server.MapPath("~/Log.txt");
                  // grava o conteúdo do caminho especificado.
                  System.IO.File.AppendAllText(caminho, conteudo);
               }
               catch (Exception)
               {


               }

            }
         }
      }
   }
}