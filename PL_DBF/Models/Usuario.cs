using System;
using System.Collections.Generic;

namespace PL_DBF.Models
{
    public partial class Usuario
    {
        public int IdUsuario { get; set; }
        public string? Nombre { get; set; }
        public string? ApellidoPaterno { get; set; }
        public string? ApellidoMaterno { get; set; }
        public DateTime? FechaNacimiento { get; set; }
        public string? Email { get; set; }
        public string? Telefono { get; set; }
        public byte? IdRol { get; set; }

        public virtual Rol? IdRolNavigation { get; set; }
    }
}
