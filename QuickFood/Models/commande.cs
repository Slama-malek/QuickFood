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
    
    public partial class commande
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public commande()
        {
            this.detail_cmd = new HashSet<detail_cmd>();
        }
    
        public int id_cmd { get; set; }
        public string date_cmd { get; set; }
        public string type_pay { get; set; }
        public Nullable<double> lat { get; set; }
        public Nullable<double> @long { get; set; }
        public int id_liv { get; set; }
        public int idclient { get; set; }
        public int id_plat { get; set; }
    
        public virtual client client { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<detail_cmd> detail_cmd { get; set; }
        public virtual livreur livreur { get; set; }
    }
}
