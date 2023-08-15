using System.ComponentModel.DataAnnotations;

namespace ExamenGS.Models
{
    public class ProductoModel
    {
        [Required(ErrorMessage ="Campo Obligatorio")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "Campo Obligatorio")]
        public decimal Precio { get; set; }
        [Required(ErrorMessage = "Campo Obligatorio")]
        public int CodigoFabricante { get; set; }
    }
}
