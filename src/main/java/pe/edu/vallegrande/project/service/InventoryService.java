package pe.edu.vallegrande.project.service;

import pe.edu.vallegrande.project.model.Inventory;
import java.util.List;
import java.util.Optional;

public interface InventoryService {

    List<Inventory> findAll();

    Optional<Inventory> findById(Long id);

    List<Inventory> findAllByState(String state);

    Inventory save(Inventory customer);

    Inventory update(Inventory customer);

    Inventory restore(Long id);

    Inventory delete(Long id);
    
}