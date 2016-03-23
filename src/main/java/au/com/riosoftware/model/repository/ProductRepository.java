package au.com.riosoftware.model.repository;

import au.com.riosoftware.model.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, Long> {
    Product findByName(String name);
}
