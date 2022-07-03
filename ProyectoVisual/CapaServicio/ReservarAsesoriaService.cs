using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CapaServicio
{
    public class ReservarAsesoriaService : GeneralService
    {
        public void reservarAsesoria(int clienteid, int asesorid, String fecha, String observaciones)
        {
            // Mensajes por defecto
            this.Estado = 1;
            this.Mensaje = "Proceso ejecutado correctamente";
            // Proceso General
            using (SqlConnection con = new SqlConnection(CadenaConexion))
            {
                try
                {
                    // La conexión
                    con.Open();
                    // El comando
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "usp_reservar_asesoria";
                    // Parametros
                    cmd.Parameters.Add("@p_cli_id", SqlDbType.Int).Value = clienteid;
                    cmd.Parameters.Add("@p_asr_id", SqlDbType.Int).Value = asesorid;
                    cmd.Parameters.Add("@p_ases_fecha", SqlDbType.Date).Value = fecha;
                    cmd.Parameters.Add("@p_ases_observ", SqlDbType.VarChar,200).Value = observaciones;
                    cmd.Parameters.Add("@p_msg ", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@p_estado", SqlDbType.Int).Direction = ParameterDirection.Output;
                    // Ejecutar el procedimiento
                    cmd.ExecuteNonQuery();
                    this.Estado = Convert.ToInt32(cmd.Parameters["@p_estado"].Value);
                    this.Mensaje = "Asesoría reservada exitosamente.";
                    cmd.Dispose();
                }
                catch (Exception e)
                {
                    this.Estado = -1;
                    this.Mensaje = "Hay un error.";
                }

            }
        }

        
    }
}
