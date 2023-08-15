using ExamenGS.DatosBD;
using ExamenGS.Models;
using Microsoft.AspNetCore.Mvc;

namespace ExamenGS.Controllers
{
    public class ProductoController : Controller
    {
        private readonly string cadenaSql = string.Empty;
        private readonly EjecucionDatos _ejecucion;

        public ProductoController()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            cadenaSql = builder.GetSection("ConnectionStrings:SQL").Value;
            _ejecucion = new EjecucionDatos(cadenaSql);
        }
        public IActionResult ConsultaProductos()
        {
            try
            {
                var lista = _ejecucion.ListaTabla("SP_PRODUCTOS_LISTA");
                return View(lista);
            }
            catch (Exception e)
            {
                Console.WriteLine("Ocurrio un error: " + e.Message + ", " + e.StackTrace);
                return View();
            }
        }

        public IActionResult InsertaProducto()
        {
            return View();
        }


        [HttpPost]
        public IActionResult InsertaProducto(ProductoModel entrada)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View();
                }
                List<Parametro> parametros = new()
            {
                new Parametro("@nombre_producto", entrada.Nombre),
                new Parametro("@precio_producto", entrada.Precio),
                new Parametro("@codigo_fabricador", entrada.CodigoFabricante)
            };
                var respuesta = _ejecucion.EjecutaSP("sp_producto", parametros);
                if (respuesta == 1)
                {
                    return RedirectToAction("ConsultaProductos");
                }
                else
                {
                    return View();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Ocurrio un error: " + e.Message + ", " + e.StackTrace);
                return View();
            }
        }
    }
}
