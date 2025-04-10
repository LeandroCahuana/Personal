package pe.edu.vallegrande.project.repository;

import pe.edu.vallegrande.project.model.Inventory;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface InventoryRepository extends JpaRepository<Inventory, Long> {
    List<Inventory> findAllByState(String state);
}