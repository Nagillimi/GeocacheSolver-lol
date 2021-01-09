clear
close

%% Prompt user for hint string
input_string = 'JRIRY';

% Init output string to input
output_string = input_string;

%% Half-Alphabet solver
m = ['a','b','c','d','e','f','g','h','i','j','k','l','m'];
M = ['A','B','C','D','E','F','G','H','I','J','K','L','M'];
n = ['n','o','p','q','r','s','t','u','v','w','x','y','z'];
N = ['N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

for ii = 1:length(input_string)
    for jj = 1:13
        if(input_string(ii) == m(jj))
            output_string(ii) = n(jj);
        elseif(input_string(ii) == n(jj))
            output_string(ii) = m(jj);
        elseif(input_string(ii) == M(jj))
            output_string(ii) = N(jj);
        elseif(input_string(ii) == N(jj))
            output_string(ii) = M(jj);
        end
    end
end
disp('Half-Alphabet Method')
disp(output_string)

%% Reverse Alphabet solver
m = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
M = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
n = ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a'];
N = ['Z','Y','X','W','V','U','T','S','R','Q','P','O','N','M','L','K','J','I','H','G','F','E','D','C','B','A'];

for ii = 1:length(input_string)
    for jj = 1:26
        if(input_string(ii) == m(jj))
            output_string(ii) = n(jj);
        elseif(input_string(ii) == n(jj))
            output_string(ii) = m(jj);
        elseif(input_string(ii) == M(jj))
            output_string(ii) = N(jj);
        elseif(input_string(ii) == N(jj))
            output_string(ii) = M(jj);
        end
    end
end

disp('Reverse-Alphabet Method')
disp(output_string)

%% Caesar Shift solver
K = 9;

m = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',...
     'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
M = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',...
     'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

for ii = 1:length(input_string)
    for jj = 1:26
        if(input_string(ii) == m(jj))
            output_string(ii) = m(jj+K);
        elseif(input_string(ii) == M(jj))
            output_string(ii) = M(jj+K);
        end
    end
end

shift = string(K);
disp('Caesar Shift ('+shift+') Method')
disp(output_string)
