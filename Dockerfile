#imagen base
FROM python:3.9-slim

#direcotorioi de trabajo
WORKDIR /app

#copiar archivos necesarios
COPY requeirements.txt /app/
RUN pip install -r requeirements.txt
COPY . /app/

#exponer app web
EXPOSE 5000

#ejecutar la app
CMD ["python", "app.py"]