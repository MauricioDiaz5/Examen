using ExamenGS.Models;
using System.Data;
using System.Data.SqlClient;

namespace ExamenGS.DatosBD
{
    public class EjecucionDatos
    {
        private readonly string _connection;

        public EjecucionDatos(string connection)
        {
            _connection = connection;
        }

        public List<ListaProductoModel> ListaTabla(string nombreProcedimiento)
        {
            var lista = new List<ListaProductoModel>();
            SqlConnection conexion = new(_connection);
            try
            {
                conexion.Open();
                SqlCommand cmd = new(nombreProcedimiento, conexion)
                {
                    CommandType = CommandType.StoredProcedure
                };
                using var dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lista.Add(new ListaProductoModel()
                    {
                        Codigo = (int)dr["Codigo"],
                        Producto = (string)dr["Producto"],
                        Precio = (decimal)dr["Precio"],
                        Fabricante = (string)dr["Fabricante"]
                    });
                }
            }
            catch (Exception)
            {
                return null;
            }
            return lista;
        }

        public int EjecutaSP(string nombreSP, List<Parametro> parametros)
        {
            SqlConnection conexion = new(_connection);
            try
            {
                conexion.Open();
                SqlCommand cmd = new(nombreSP, conexion)
                {
                    CommandType = CommandType.StoredProcedure
                };
                if (parametros.Count > 0)
                {
                    foreach (var parametro in parametros)
                    {
                        cmd.Parameters.AddWithValue(parametro.Nombre, parametro.Valor);
                    }
                }
                int i = cmd.ExecuteNonQuery();
                return i;
            }
            catch (Exception)
            {
                return 0;
            }
            finally
            {
                conexion.Close();
            }
        }
    }
}
