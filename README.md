# as241s2_t10_ods04

## Conexion MySQL y NetBeans

### Conexion
    Connection con;

    String hostName = "imt.c4lb6ci7ceyk.us-east-1.rds.amazonaws.com";
    String jdbcUrl = "jdbc:mysql://" + hostName + ":3306/IMT_Contact_DB?useSSL=false&serverTimezone=UTC";
    String username = "admin";
    String password = "T10.4ODS";

    public conexion() {

        try {
            con = DriverManager.getConnection(jdbcUrl, username, password);
            if (con != null) {
                System.out.println("Conexion exitosa");
            }
        } catch (SQLException e) {
            System.out.println("Error al conectar la base de datos " + e);
        }
    }

    public Connection getConnection() {
        return con;
    }

### Leer Tabla

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

### Limpiar Tabla

    public void limpiarTabla() {
        for(int i = 0; i <= tablaDATOS.getRowCount(); i++) {
            modelo.removeRow(i);
            i=i-1;
        }
    }

### Seleccionar Registro

    private void tablaDATOSMouseClicked(java.awt.event.MouseEvent evt) {                                        
        int fila = tablaDATOS.getSelectedRow();
        if(fila==-1) {
            JOptionPane.showMessageDialog(null, "Agente no Seleccionado");
        }else{
            id = Integer.parseInt((String)tablaDATOS.getValueAt(fila, 0).toString());
            String fecha = (String)tablaDATOS.getValueAt(fila, 1);
            String nombre = (String)tablaDATOS.getValueAt(fila, 2);
            String apellido = (String)tablaDATOS.getValueAt(fila, 3);
            String email = (String)tablaDATOS.getValueAt(fila, 4);
            String celular = (String)tablaDATOS.getValueAt(fila, 5);
            String estado = (String)tablaDATOS.getValueAt(fila, 6);
            txtID.setText(""+id);
            txtFECHA.setText(fecha);
            txtNOM.setText(nombre);
            txtAPE.setText(apellido);
            txtEMAIL.setText(email);
            txtCELL.setText(celular);
            txtSTATE.setText(estado);
        }
    } 

### Agregar Registro

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
