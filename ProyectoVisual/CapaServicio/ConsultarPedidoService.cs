using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CapaServicio
{
    public class ConsultarPedidoService : GeneralService
    {
        public DataTable consultarAsesor()
        {
            DataTable table = new DataTable();
            using (SqlConnection con = new SqlConnection(CadenaConexion))
            {
                try
                {
                    // La conexión
                    con.Open();
                    // El comando
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "usp_consultar_pedido";
                    // Parametros
                    cmd.Parameters.Add("@p_mensaje", SqlDbType.VarChar).Value = ParameterDirection.Output;
                    cmd.Parameters.Add("@p_estado", SqlDbType.Int).Direction = ParameterDirection.Output;
                    // Ejecutar el procedimiento
                    cmd.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(table);

                    this.Estado = Convert.ToInt32(cmd.Parameters["@p_estado"].Value);
                    this.Mensaje = "Consulta realizada exitosamente.";
                    cmd.Dispose();
                }
                catch (Exception e)
                {
                    this.Estado = -1;
                    this.Mensaje = "Hay un error.";
                }

            }
            return table;
        }
    }
}
