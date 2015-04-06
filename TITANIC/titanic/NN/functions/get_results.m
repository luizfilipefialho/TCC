function [ media ] = get_results( number_max_neuron, number_max_train, trained_net )
%ANALIZE Summary of this function goes here
%   Detailed explanation goes here
media=[];

for my_net=1:size(trained_net,1)
	for comb_input=1:16
		for topologia = 1:number_max_neuron
			for t = 1:number_max_train
				for fcn = 1:4
				
					if (exist(cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))),'file'))&&(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn)==trained_net(my_net))
						load (cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))));
						load('data.mat');
						test_mod=cell2mat(test(comb_input));

						all_out = net(test_mod);
						for i=1:size(all_out,2)
							media(i)=all_out(i)/size(trained_net,1)
						end
						for i=1:size(media,2)
							if media(i)>0
								media(i)=1
							else
								media(i)=0
							end
						end								
					end       
					
				end
			end
		end
	end
end

end