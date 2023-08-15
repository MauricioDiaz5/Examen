namespace ExamenGS.Models
{
    public class Parametro
    {
        public Parametro(string nombre, dynamic valor)
        {
            Nombre = nombre;
            Valor = valor;
        }
        public string Nombre { get; set; }
        public dynamic Valor { get; set; }
    }
}
