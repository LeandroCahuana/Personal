# Implementación del CRUD de Maestro
## Lectura de los datos de las tablas
La siguiente función la hemos utilizado para el JFrame relacionado con la tabla Agent de nuestra Base de Datos, este metodo nos permite leer los datos que se encuentran en la tabla de nuestra base de datos por medio de la sentencia SQL, luego es asignado a un modelo, el cual se realiza por medio de un objeto, una vez hecho esto, se suben los datos a nuestra tabla del JFrame:

        public void listar() {

        String sql = "SELECT * FROM agent;"; 
        
        try {
        
            cn = con.getConnection();
            
            st = cn.createStatement();
            
            rs = st.executeQuery(sql);
            
            Object[] agent = new Object[7];
            
            modelo = (DefaultTableModel)tablaDATOS.getModel();
            
            while (rs.next()) {                
                agent[0] = rs.getInt("id");
                agent[1] = rs.getString("registration_date");
                agent[2] = rs.getString("name_agent");
                agent[3] = rs.getString("lastname");
                agent[4] = rs.getString("email");
                agent[5] = rs.getString("cellphone");
                agent[6] = rs.getString("state");
                modelo.addRow(agent);
            }
            tablaDATOS.setModel(modelo);
        } catch (Exception e) {
            System.out.println("Error en el metodo listar"+e);
        }
    }
## Creación o registro de datos
El siguiente metodo se ha implementado en el mismo JFrame y se activara cuando el usuario presione el botón 'AGREGAR', este metodo consiste en obtener los datos ingresados en los Text Field, concatenarlos a nuestra sentencia SQL y ejecutarlo en la conexion que realizamos a nuestra base de datos:

    public void agregar() {
        String nombre = txtNOM.getText();
        String apellido = txtAPE.getText();
        String email = txtEMAIL.getText();
        String celular = txtCELL.getText();
        if (nombre.equals("") || apellido.equals("") || email.equals("") || celular.equals("")) {
            JOptionPane.showMessageDialog(null, "Cajas Vacias...!!!");
        } else {
            String sql = "INSERT INTO agent (name_agent, lastname, email, cellphone) VALUES ('"+nombre+"','"+apellido+"','"+email+"','"+celular+"')";
            try {
                cn = con.getConnection();
                st = cn.createStatement();
                st.executeUpdate(sql);
                JOptionPane.showMessageDialog(null, "Agente Agregado...!!!");
                limpiarTabla();
            } catch (Exception e) {
            }
            listar();
        }
    }
## Modificación de los datos
El siguiente metodo se ha implementado con el fin de poder modificar y actualizar ciertas datos en los registros que hemos realizado previamente, para ello se selecciona el registro, se obtiene los datos, se permite modificarlos por medio de Text Field, se obtiene los nuevos datos, se concatena a nuestra secuencia SQL y se ejecuta en la conexion de nuestra base de datos:

    public void modificar() {
        String nombre = txtNOM.getText();
        String apellido = txtAPE.getText();
        String email = txtEMAIL.getText();
        String celular = txtCELL.getText();
        String sql = "update agent set name_agent='"+nombre+"', lastname='"+apellido+"', email='"+email+"', cellphone='"+celular+"' where id="+id;
        if (nombre.equals("") || apellido.equals("") || email.equals("") || celular.equals("")) {
            JOptionPane.showMessageDialog(null, "Debe ingresar datos");
        } else {
            try {
                cn = con.getConnection();
                st = cn.createStatement();
                st.executeUpdate(sql);
                JOptionPane.showMessageDialog(null, "Agente Actualizado");
                limpiarTabla();
            } catch (Exception e) {
            }
            listar();
        }
    }
## Eliminación de registros
El siguiente metodo se ha implementado con el fin de poder eliminar registros de nuestra tabla, para ello primero se debe seleccionar la tabla, se obtiene el número o id de la tabla y por medio de una secuencia SQL, se realiza la eliminación del registro en nuestra tabla:

    public void eliminar () {
        int seleccionado = tablaDATOS.getSelectedRow();
        if (seleccionado==-1) {
            JOptionPane.showMessageDialog(null, "Debe seleccionar fila");
        } else {
            String sql = "delete from agent where id="+id;
            try {
                cn = con.getConnection();
                st = cn.createStatement();
                st.executeUpdate(sql);
                JOptionPane.showMessageDialog(null, "Agente eliminado con exito...!!!");
                limpiarTabla();
            } catch (Exception e) {
            }
            listar();
        }
    }
