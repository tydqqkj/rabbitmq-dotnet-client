@ECHO OFF
set DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet restore --verbosity=normal .\RabbitMQDotNetClient.sln
dotnet run --verbosity=normal --project .\projects\Apigen\Apigen.csproj --apiName:AMQP_0_9_1 .\projects\specs\amqp0-9-1.stripped.xml .\gensrc\autogenerated-api-0-9-1.cs
dotnet build --verbosity=normal .\RabbitMQDotNetClient.sln
