%Rafael Lopes Conde dos Reis

close all
clear all

%adicionando pasta de funcoes
addpath('functions')

% Carregando dados
load('data.mat');

%Definindo constantes
number_max_neuron=20;
number_max_train=10;


%Criando a rede neural

for comb_input=1:16
	for topologia = 1:number_max_neuron
		for t = 1:number_max_train

			%treinando com 'trainlm'
			net=set_net(topologia,'trainlm',size(cell2mat(train_set(comb_input)),1));
			[net tr]=train(net,cell2mat(train_set(comb_input)),target);
			sprintf('rede treinada : treinamento - trainlm;  number of neuron - %i; iteração %i',topologia,t)
			save (cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_1',topologia,t,comb_input))));  


			%treinando com 'trainrp'
			net=set_net(topologia,'trainrp',size(cell2mat(train_set(comb_input)),1));
			[net tr]=train(net,cell2mat(train_set(comb_input)),target);
			sprintf('rede treinada : treinamento - trainrp;  number of neuron - %i; iteração %i',topologia,t)
			save (cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_2',topologia,t,comb_input))));  

			
			%treinando com 'traingdx'
			net=set_net(topologia,'traingdx',size(cell2mat(train_set(comb_input)),1));
			[net tr]=train(net,cell2mat(train_set(comb_input)),target);
			sprintf('rede treinada : treinamento - traingdx;  number of neuron - %i; iteração %i',topologia,t)
			save (cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_3',topologia,t,comb_input))));  

			
			%treinando com 'trainbfg'
			net=set_net(topologia,'trainbfg',size(cell2mat(train_set(comb_input)),1));
			[net tr]=train(net,cell2mat(train_set(comb_input)),target);
			sprintf('rede treinada : treinamento - trainbfg;  number of neuron - %i; iteração %i',topologia,t)
			save (cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_4',topologia,t,comb_input))));  

			
		end
	end
end
