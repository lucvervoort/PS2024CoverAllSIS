//using Assignment.Infrastructure.DTO;
using Assignment.WPF.App.DTO;
using AutoMapper;
using System;

namespace Generic.Host.WPF.App
{
    public class MappingConfig : Profile
    {
        public MappingConfig()
        {
            // GUI
            CreateMap<CustomerDTO, Assignment.Domain.Models.Customer>().ReverseMap();

            // DB: EF Core
            //CreateMap<Customer, Assignment.Domain.Models.Customer>().ReverseMap();
        }
    }
}
