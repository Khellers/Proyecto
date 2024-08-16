

namespace XPPROJECT3
{
    using System;
    using System.Collections.Generic;
    
    public partial class Seccion
    {
        public int IdSeccion { get; set; }
        public string cedula { get; set; }
        public int ProfesorGuia { get; set; }
        public string año { get; set; }
    
        public virtual estudiantes estudiantes { get; set; }
        public virtual profesoress profesoress { get; set; }
        public virtual Secciones Secciones { get; set; }
    }
    public class SeccionViewModel
    {
        public string Seccion { get; set; }
        public List<Seccion> Estudiantes { get; set; }
        public string Profesor { get; set; }
    }
}
