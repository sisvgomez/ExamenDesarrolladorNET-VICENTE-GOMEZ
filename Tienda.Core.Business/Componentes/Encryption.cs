using System;
using System.IO;
using System.Text;
using System.Security.Cryptography;

namespace Condominium.Core.Business.Componentes
{
    [Serializable]
    public class Encryption
    {
        private const string FrasePassword = "DSD2.0@P455w0rd";
        private const string sal = "DSD2.0@Sal";
        private const string hash = "MD5";
        private const int iteraciones = 2;
        private const string vector = "DSD2Arquitectura";
        private const int tamanioDeLlave = 256;

        private const string keybytesSTR = "us5N0PxHAWuIgb0/Qc2sh5OdWBbXGady";
        private const string ivSTR = "zAvR2NI87bBx746n";


        public static string Decrypt(string cipherText)
        {
            string plainText = "";
            try
            {
                if (cipherText != null)
                {
                    /*Si por alguna razón tu proyecto es web, DEBES de hacer un replace sobre el CipherText algo así
                      cipherText = cipherText.Replace("+"," ");
                    esto con la finalidad de que no truene, ya que algunas claves cifradas llevan un espacio y en web eso lo replaza por un signo "+".*/

                    //Convierte cadenas definiendo las caracteristicas de la llave de encriptación
                    //en areglos de bytes. Se asume que las cadenas solo tienen caracteres UTF8.
                    byte[] initVectorBytes = Encoding.UTF8.GetBytes(vector);
                    byte[] saltValueBytes = Encoding.UTF8.GetBytes(sal);

                    cipherText = cipherText.Replace(" ", "+");

                    // Convierte nuestro texto a desencriptar en un arreglo de bytes
                    byte[] cipherTextBytes = Convert.FromBase64String(cipherText);

                    // Primero se crea el password del cual se obtiene la llave.
                    // Este password será generado para un valor especifico de frase password y 
                    // del valor sal. El password será creado usando el algoritmo hash especificado.
                    // Este password puede ser creado con varias iteraciones
                    PasswordDeriveBytes password = new PasswordDeriveBytes(
                                                                    FrasePassword,
                                                                    saltValueBytes,
                                                                    hash,
                                                                    iteraciones);

                    // Se usa el password para crear los bytes semi aleatorios para la llave de encriptación.
                    // Se especifica el tamaño de la llave en bytes en lugar de bits.
                    byte[] keyBytes = password.GetBytes(tamanioDeLlave / 8);

                    // Se crea el objeto Rijndael para la encriptación.
                    RijndaelManaged symmetricKey = new RijndaelManaged();

                    // Se usa el modo de encriptación a Cipher Block Chaining (CBC)
                    symmetricKey.Mode = CipherMode.CBC;

                    // Se genera el desencriptador para la llave de bytes existente y se
                    // inicializa el vector. El tamaño de la llave se basa en el número de
                    // bytes de la llave.
                    ICryptoTransform decryptor = symmetricKey.CreateDecryptor(
                                                                     keyBytes,
                                                                     initVectorBytes);

                    // Se define el memory stream el cual será usado para mantener los datos encriptados.
                    MemoryStream memoryStream = new MemoryStream(cipherTextBytes);

                    // Se define el cryptographic stream (siempre se usa el modo Read para encriptación).
                    CryptoStream cryptoStream = new CryptoStream(memoryStream,
                                                                  decryptor,
                                                                  CryptoStreamMode.Read);

                    // Desde este punto no conocemos qué tamaño tiene el dato desencriptado
                    // a obtener, se asigna el tamaño del buffer suficiente para guardar la cadena desencriptada
                    // la cual no es mas grande que la cadena a desencriptar.
                    byte[] plainTextBytes = new byte[cipherTextBytes.Length];

                    // Se inicia la desencriptación
                    int decryptedByteCount = cryptoStream.Read(plainTextBytes,
                                                               0,
                                                               plainTextBytes.Length);

                    // Se cierran los stream
                    memoryStream.Close();
                    cryptoStream.Close();

                    // Se convierte el dato desencriptado en cadena
                    // asumiendo que el texto original estaba en UTF8.
                     plainText = Encoding.UTF8.GetString(plainTextBytes,
                                                               0,
                                                               decryptedByteCount);

                    // Se regresa la cadena desencriptada
                }
                return plainText;
            }
            catch
            {
                return "";
            }
        }


        public static string Encrypt(string plainText)
        {
            // Convierte las cadena en arreglos de bytes asumiendo que la cadena
            // original solo contiene caracteres UTF8.
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(vector);
            byte[] saltValueBytes = Encoding.UTF8.GetBytes(sal);

            // Se convierte nuestro texto plano en un arreglo de bytes asumiendo
            // que solo tiene caracteres UTF8.
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);

            // Se crea el password.
            PasswordDeriveBytes password = new PasswordDeriveBytes(
                                                            FrasePassword,
                                                            saltValueBytes,
                                                            hash,
                                                            iteraciones);

            // Se obtiene la llave de encriptación
            byte[] keyBytes = password.GetBytes(tamanioDeLlave / 8);

            // Se crea el objeto Rijndael.
            RijndaelManaged symmetricKey = new RijndaelManaged();

            // Se usa el modo de encriptación Cipher Block Chaining (CBC).
            symmetricKey.Mode = CipherMode.CBC;

            // Se genera el encriptador a partir de la llave existente y se inicializa el vector.
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(
                                                             keyBytes,
                                                             initVectorBytes);

            // Se define el memory stream para guardar los datos encriptados
            MemoryStream memoryStream = new MemoryStream();

            // Se define el cryptographic stream en modo Write
            CryptoStream cryptoStream = new CryptoStream(memoryStream,
                                                         encryptor,
                                                         CryptoStreamMode.Write);
            // Se encripta
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);

            // Se termina de encriptar
            cryptoStream.FlushFinalBlock();

            // Se convierten los datos encriptados en un arreglo de bytes.
            byte[] cipherTextBytes = memoryStream.ToArray();

            // Se cierran lso streams.
            memoryStream.Close();
            cryptoStream.Close();

            // Se convierten los datos encriptados en codificación Base 64.
            string cipherText = Convert.ToBase64String(cipherTextBytes);

            // Se regresa la cadena encriptada
            return cipherText;
        }

        public static string DecryptStringAES(string cipherText)
        {
            var keybytes = Encoding.UTF8.GetBytes(keybytesSTR);
            var iv = Encoding.UTF8.GetBytes(ivSTR);

            var encrypted = Convert.FromBase64String(cipherText);
            var decriptedFromJavascript = DecryptStringFromBytes(encrypted, keybytes, iv);
            return string.Format(decriptedFromJavascript);
        }

        private static string DecryptStringFromBytes(byte[] cipherText, byte[] key, byte[] iv)
        {
            // Check arguments. 
            if (cipherText == null || cipherText.Length <= 0)
            {
                throw new ArgumentNullException("cipherText");
            }
            if (key == null || key.Length <= 0)
            {
                throw new ArgumentNullException("key");
            }
            if (iv == null || iv.Length <= 0)
            {
                throw new ArgumentNullException("key");
            }

            // Declare the string used to hold 
            // the decrypted text. 
            string plaintext = null;

            // Create an RijndaelManaged object 
            // with the specified key and IV. 
            using (var rijAlg = new RijndaelManaged())
            {
                //Settings 
                rijAlg.Mode = CipherMode.CBC;
                rijAlg.Padding = PaddingMode.PKCS7;
                rijAlg.FeedbackSize = 128;

                rijAlg.Key = key;
                rijAlg.IV = iv;

                // Create a decrytor to perform the stream transform. 
                var decryptor = rijAlg.CreateDecryptor(rijAlg.Key, rijAlg.IV);

                try
                {
                    // Create the streams used for decryption. 
                    using (var msDecrypt = new MemoryStream(cipherText))
                    {
                        using (var csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                        {

                            using (var srDecrypt = new StreamReader(csDecrypt))
                            {
                                // Read the decrypted bytes from the decrypting stream 
                                // and place them in a string. 
                                plaintext = srDecrypt.ReadToEnd();

                            }

                        }
                    }
                }
                catch
                {
                    plaintext = "keyError";
                }
            }

            return plaintext;
        }
    }
}
