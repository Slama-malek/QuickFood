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
    
    public partial class platss
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public platss()
        {
            this.detail_cmd = new HashSet<detail_cmd>();
            this.note_plat = new HashSet<note_plat>();
        }
    
        public int id_platss { get; set; }
        public string nom_plat { get; set; }
        public string descrip_plat { get; set; }
        public Nullable<double> prix_plat { get; set; }
        public int id_resto { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<detail_cmd> detail_cmd { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<note_plat> note_plat { get; set; }
        public virtual resto resto { get; set; }
    }
}
