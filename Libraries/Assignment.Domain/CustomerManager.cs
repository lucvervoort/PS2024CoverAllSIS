using Assignment.Contracts;
using Assignment.Domain.Models;

namespace Assignment.Domain
{
    public class CustomerManager
    {
        private readonly IRepository<Customer> _customerRepository;

        public CustomerManager(IRepository<Customer> customerRepository)
        {
            _customerRepository = customerRepository;
        }

        public IEnumerable<Customer> GetAllCustomers()
        {
            return _customerRepository.GetAll();
        }

        public void DeleteCustomer(Customer customer)
        {
            _customerRepository.Delete(customer);
        }
    }
}
