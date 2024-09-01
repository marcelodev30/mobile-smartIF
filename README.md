
## O passo a passo para configurar e rodar a aplicação.

### Passo 1: Obter o código do projeto

  #### 1.Clonar o repositório (se necessário):
  - Clone o repositório para o seu ambiente local:.
 ```bash 
  git clone https://github.com/marcelodev30/mobile-smartIF
```
  #### 2. Navegar até o diretório do projeto:
   ```bash 
  cd nome_do_projeto
  ```

### Passo 2: Instalar o Flutter e o Dart SDK
#### 1. Verifique se o Flutter está instalado:
- No terminal, execute:
```bash 
  flutter --version
```
- Se o Flutter não estiver instalado, siga as instruções para instalar o Flutter a partir do site oficial: flutter.dev.
#### 2. Verificar se o Dart SDK está instalado:
- O Dart vem junto com o Flutter, então ao instalar o Flutter, você também terá o Dart SDK. Verifique com:
  ```bash 
  dart --version
  ```

### Passo 3:  Instalar as dependências do projeto
#### 1. Instalar pacotes do pubspec.yaml: 
- Dentro do diretório do projeto, execute:
  ```bash 
  flutter pub get
  ```
- Isso garantirá que todas as dependências necessárias para o projeto sejam instaladas.
### Passo 4: Configurar um dispositivo para executar o projeto
#### 1. Configurar um emulador Android::
- Abra o Android Studio, vá até o AVD Manager e configure um novo dispositivo virtual (emulador).
- Inicie o emulador para garantir que ele está funcionando corretamente.

#### 2. Conectar um dispositivo físico (opcional):
- Conecte um dispositivo Android via USB e habilite a depuração USB nas configurações de desenvolvedor do dispositivo.

#### 2. Verificar dispositivos conectados:
- No terminal, execute:
```bash 
  flutter devices
  ```
- Isso listará todos os dispositivos e emuladores disponíveis para executar o projeto.

### Passo 5: Executar o projeto.

#### 1. Executar no emulador ou dispositivo:
- No terminal, dentro do diretório do projeto, execute:
  ```bash 
  flutter run
  ```
- Isso compilará e executará o projeto no dispositivo ou emulador selecionado.

### Passo 6: Compilar e distribuir o aplicativo (opcional)
#### 1. Compilar para Android:
- Para gerar um APK para Android, execute:
  ```bash 
  flutter build apk
  ```
- O APK estará disponível na pasta build/app/outputs/flutter-apk.
#### 2. Compilar para iOS (se estiver em macOS)::
- Certifique-se de que o Xcode está instalado e configurado, e então execute:
 ```bash 
  flutter build ios
  ```
- Abra o projeto no Xcode para compilar e distribuir.
#### 3. Compilar para Web:
  ```bash 
  flutter build web
  ```
