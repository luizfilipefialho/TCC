function [ net ] = set_net( neurons, net_trainFcn, num_input )
%[ net ] = new_network( neurons, train, net_delays )
%    net           - Rede criada
%    neurons       - Número de neurónis na camada escondida
%    net_trainFcn  - Função de treinamento

%   Função para criar uma Rede Neural para previsão da cotação da Petrobras

% Criando a rede
net = feedforwardnet(neurons,net_trainFcn);

% Configurando funções de transferência e de treinamento
net.layers{1}.transferFcn='tansig';
net.layers{2}.transferFcn='tansig';
net.performFcn='mse';

% Configurando a inicialização da rede
net.initFcn='initlay';
net.layers{1}.initFcn='initnw';
net.layers{2}.initFcn='initnw';
net.inputs{1}.size=num_input;
net.layers{2}.size=1;


%Inicializando rede - pesos e biases
net=init(net);

%Definindo parâmetros da rede
net.trainParam.lr = 0.01;
net.trainParam.max_fail=100;
net.trainParam.mc = 0.99;
net.trainParam.min_grad=1e-7;
net.trainParam.goal = 0;
net.trainParam.epochs = 400;
net.trainParam.show= 1;

end

