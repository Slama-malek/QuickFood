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
    using System.ComponentModel.DataAnnotations;

    public partial class resto
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public resto()
        {
            this.note_resto = new HashSet<note_resto>();
            this.platss = new HashSet<platss>();
        }
    
        public int id_resto { get; set; }
        [Required]
        public string nom_resto { get; set; }
        [Required]
        [Range(10000000,99999999)]
        public string tel_resto { get; set; }
        [Required]
      
        public string adr_resto { get; set; }
        [Required]
        public string description { get; set; }
        [Required]
        public Nullable<int> fourchette { get; set; }

        public int id_sp { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<note_resto> note_resto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<platss> platss { get; set; }
        public virtual specialite specialite { get; set; }
    }
}
