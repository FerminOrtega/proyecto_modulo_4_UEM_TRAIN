# extrayendo la imagen python
FROM python:3.9.10
# cambiar el directorio de trabajo
WORKDIR /app
# copiar el archivo de requisitos en la imagen
COPY ./requirements.txt requirements.txt
# instalar las dependencias y paquetes del archivo de requisitos
RUN pip install --no-cache-dir --upgrade -r requirements.txt
# copiar todo el contenido del archivo local a la imagen
COPY . /app
# configurar el contenedor para que se ejecute
ENTRYPOINT [ "python" ]
# mandamos que se ejecute
CMD ["run.py" ]