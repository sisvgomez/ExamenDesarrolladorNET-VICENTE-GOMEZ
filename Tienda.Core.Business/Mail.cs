using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;





namespace Tienda.Core.Business
{
    [Serializable]
    public class Mail
    {
        public static SmtpClient Cliente { get; private set; }

        //public static bool EnviarCorreo(ServiceEmail.ContactInfoEntity[] contactos, ServiceEmail.NotificationContent contenido, ServiceEmail.ContactInfoEntity[] contactosCC, ServiceEmail.ContactInfoEntity[] contactosCCO)
        //{

        //    bool respuestaEnvioMail = false;
        //    try
        //    {

        //        ServiceEmail.NotificationServiceContractClient notificationServiceContractClient = new ServiceEmail.NotificationServiceContractClient();


        //        return respuestaEnvioMail = notificationServiceContractClient.SendNotification(contactos, contenido, contactosCC, contactosCCO);
        //    }
        //    catch (Exception ex)
        //    {
        //        Exception ee = new Exception("Class:CorreoElectronico Method:EnviarCorreo", ex);
        //        ExceptionManager.HandleException(ee, 1, 5000, 1);
        //        return respuestaEnvioMail;
        //    }
        //}

        /// <summary>method <c>Send</c> 
        /// cuentaCorreo : cadena con cuenta de correos separadas por coma
        /// mensaje : cuerpo del correo a enviar
        /// asunto : asunto del correo
        /// </summary>
        public static bool Send(string cuentasCorreo, string mensaje, string asunto, string cuentasCorreoCC, string cuentasCorreoCCO)
        {
            var bandera = false;
            try
            {

                MailMessage mail = new MailMessage();
                mail.IsBodyHtml = true;
                mail.From = new MailAddress("impresiontotal4@gmail.com", "Impresión Total");
                mail.To.Add(cuentasCorreo);
                mail.CC.Add(cuentasCorreoCC);
                mail.Subject = asunto;
                
                mail.Body = mensaje;
                using (SmtpClient smtp = new SmtpClient())
                {
                    System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls;
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;

                    System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                    NetworkCred.UserName = "impresiontotal4@gmail.com";
                    NetworkCred.Password = "Impr3s10n$1";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Send(mail);
                    bandera = true;
                }
            }
            catch
            {
                return bandera;
            }


            return bandera;
        }
            public static bool Send(string cuentaCorreo)
        {
            try
            {
                try
                {

                    MailMessage mail = new MailMessage();
                    mail.IsBodyHtml = true;
                    mail.From = new MailAddress("sisvgomez@gmail.com", "Tienda");
                    mail.To.Add(cuentaCorreo);

                    mail.Subject = "Mensaje de prueba desde C# .NET";
                    mail.Body = "<h1>Mensaje de prueba!!<h1>";

                    using (SmtpClient smtp = new SmtpClient())
                    {
                        //    System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls;
                        //    smtp.Host = "smtp.gmail.com";
                        //    smtp.Port = 587;
                        //    smtp.EnableSsl = true;

                        //    System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                        //    NetworkCred.UserName = "sisvgomez@gmail.com";
                        //    NetworkCred.Password = "magalynadia";
                        //    smtp.UseDefaultCredentials = true;
                        //    smtp.Credentials = NetworkCred;
                        System.Net.ServicePointManager.SecurityProtocol =  System.Net.SecurityProtocolType.Tls | SecurityProtocolType.Tls12;
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port =587;
                        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = new NetworkCredential("sisvgomez@gmail.com", "magalynadia");
                        smtp.EnableSsl = true;
                        smtp.Timeout = 30000;
                        smtp.Send(mail);

                    }

                
                }
                catch (Exception e)
                {
                    throw (e);
                }

                return true;
            }
            catch(Exception ex)
            {
                throw (ex);
            }

            return true;
        }

    }
}
