using System;

namespace CapaServicio
{
    public abstract class GeneralService
    {
        public string CadenaConexion { get; set; }

        // Mensaje de error
        public string Mensaje { get; set; }

        // Estado: 1=Ok  -1=Error
        public int Estado { get; set; }

        public GeneralService()
        {
            CadenaConexion = @"Data Source=localhost;Initial Catalog=Proyecto_GDI;Integrated security = true";
        }
    }
}
