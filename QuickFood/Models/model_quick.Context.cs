﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class base_quickEntities8 : DbContext
    {
        public base_quickEntities8()
            : base("name=base_quickEntities8")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<client> client { get; set; }
        public virtual DbSet<commande> commande { get; set; }
        public virtual DbSet<detail_cmd> detail_cmd { get; set; }
        public virtual DbSet<gouvernorat> gouvernorat { get; set; }
        public virtual DbSet<livreur> livreur { get; set; }
        public virtual DbSet<note_livreure> note_livreure { get; set; }
        public virtual DbSet<note_plat> note_plat { get; set; }
        public virtual DbSet<note_resto> note_resto { get; set; }
        public virtual DbSet<platss> platss { get; set; }
        public virtual DbSet<resto> resto { get; set; }
        public virtual DbSet<specialite> specialite { get; set; }
        public virtual DbSet<Table> Table { get; set; }
        public virtual DbSet<trace_liv> trace_liv { get; set; }
        public virtual DbSet<ville> ville { get; set; }
    }
}
