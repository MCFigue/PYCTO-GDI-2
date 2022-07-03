using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CapaServicio
{
    public class RegistrarPedidoService : GeneralService
    {
        public void registrarPedido(int idcliente, int asesorid, int planid, int meses, String fechaini)
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
                    cmd.CommandText = "usp_registrar_pedido";
                    // Parametros
                    cmd.Parameters.Add("@p_cli_id", SqlDbType.Int).Value = idcliente;
                    cmd.Parameters.Add("@p_asr_id", SqlDbType.Int).Value = asesorid;
                    cmd.Parameters.Add("@p_pln_id", SqlDbType.Int).Value = planid;
                    cmd.Parameters.Add("@p_pdd_meses", SqlDbType.Int).Value = meses;
                    cmd.Parameters.Add("@p_pdd_fechaini", SqlDbType.Date).Value = fechaini;
                    cmd.Parameters.Add("@p_pdd_fechafin", SqlDbType.Date).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@p_pdd_total", SqlDbType.Decimal).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@p_msg ", SqlDbType.VarChar,100).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@p_estado", SqlDbType.Int).Direction = ParameterDirection.Output;
                    // Ejecutar el procedimiento
                    cmd.ExecuteNonQuery();
                    this.Estado = Convert.ToInt32(cmd.Parameters["@p_estado"].Value);
                    this.Mensaje = "Pedido registrado exitosamente.";
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
