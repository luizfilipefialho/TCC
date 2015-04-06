
%ANALIZE Summary of this function goes here
%   Detailed explanation goes here

mat_acertos=[];

for comb_input=1:16
	for topologia = 1:number_max_neuron
		for t = 1:number_max_train
			for fcn = 1:4
			
				if exist(cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))),'file')
					load (cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))));
					
					train_set_mod=cell2mat(train_set(comb_input));
					
					test_set=[];
					target_test=[];
					
					for i=tr.testInd
						test_set=horzcat(test_set,train_set_mod(:,i));
						target_test=horzcat(target_test,target(:,i));
					end

					test_out = net(test_set);
					for i=1:size(test_out,2)
						if test_out(i)>=0.5
							test_out(i)=1;
						else
							test_out(i)=0;
						end
					end
					
					acerto=0;
					for i=1:size(test_out,2)
						if target_test(i)==test_out(i)
							acerto=acerto+1;
						end
					end
					acerto=acerto/i;

					all_out = net(train_set_mod);
					for i=1:size(all_out,2)
						if all_out(i)>=0.5
							all_out(i)=1;
						else
							all_out(i)=0;
						end
					end
					acerto2=0;
					for i=1:size(target,2)
						if target(i)==all_out(i)
							acerto2=acerto2+1;
						end
					end
					acerto2=acerto2/i;
					
					nova_linha = [{'network_%i_%i_%i_%i.mat'}; acerto; acerto2];
					mat_acertos=horzcat(mat_acertos, nova_linha);
					
				end            
			end
		end
	end
end
end

