using Assignment.Contracts;
using Assignment.Domain.Models;
//using Assignment.Infrastructure.Context;
using AutoMapper;

namespace Assignment.Infrastructure.Repositories
{
    public class EFCustomerRepository : IRepository<Customer>
    {
        //private readonly MyNorthwindContext _dbContext;
        private readonly IMapper _mapper;

        public EFCustomerRepository(/*MyNorthwindContext dbContext,*/ IMapper mapper) // ingevuld door DI
        {
            throw new NotImplementedException();

            //_dbContext = dbContext;
            _mapper = mapper;
        }

        public void Create(Customer entity)
        {
            throw new NotImplementedException();
            //_dbContext.Customers.Add(_mapper.Map<DTO.Customer>(entity));
            //_dbContext.SaveChanges();
        }

        public void Delete(Customer entity)
        {
            throw new NotImplementedException();
            /*
             var c = _dbContext.Customers.Find(entity.CustomerId);
             if (c != null)
             {
                 _dbContext.Customers.Remove(c);
                 _dbContext.SaveChanges();
             }
             */
        }

        public Customer Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Domain.Models.Customer> GetAll()
        {
            throw new NotImplementedException();
            // return _mapper.Map<IEnumerable<Domain.Models.Customer>>(_dbContext.Customers);
        }

        public void Update(Customer entity)
        {
            throw new NotImplementedException();
            //_dbContext.SaveChanges();
        }
    }
}
