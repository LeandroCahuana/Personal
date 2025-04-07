package pe.edu.vallegrande.project.repository;

import pe.edu.vallegrande.project.model.Inventory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InventoryRepository extends JpaRepository<Inventory, Long> {
    
}