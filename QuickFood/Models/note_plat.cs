//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuickFood.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class note_plat
    {
        public int id_note_plat { get; set; }
        public Nullable<int> note_plat1 { get; set; }
        public int id_platss { get; set; }
    
        public virtual platss platss { get; set; }
    }
}
