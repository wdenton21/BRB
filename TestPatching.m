function OUTPUT = TestPatching(INPUT)
    OUTPUT = 1;
end

function patchFxn
    try
        command = sprintf('git clone %s.git','https://github.com/wdenton21/BRB');
        system(command);
    catch
        warning('Failed to check for newer version.'); 
    end
end