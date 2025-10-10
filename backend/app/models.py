from app import db
class Producto(db.Model):
    __tablename__ = 'productos'

    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    precio = db.Column(db.Float, nullable=False)
    descripcion = db.Column(db.String(200))
    stock = db.Column(db.Integer, nullable=False)
    estado = db.Column(db.Boolean, nullable=False)
    

