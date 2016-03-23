package au.com.riosoftware.model.repository;

import au.com.riosoftware.model.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Long> {

    Customer findByName(String name);

}
