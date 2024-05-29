
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/7NH4.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/7NH4.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [630,631,632,645,647,1960,598,599,1947,1949,1950,1955,1956,1957,1959,1961,646,648,652,655,110,124,125,1775,1776,109,1963,143,1964,2009,111,651,107,1920,1943,1944,1827,1931,1925,1945,1935,1783,1786,1784,1785,1802,1803,2047,1967,1968,2011,1929,1928,1747,603,1746,1748,1729,1698,1759,1763,1765,1247,1699,1772,605,609,610,611,612,613,614,615,616,617,1201,1203,1730,1731,1244,1251,1246,1204,1207] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [288,291,406,408,215,216,2119,2105,1774,2135,2136,2133,2113,398,394,395,113,663,114,89,90,1775,1776,646,647] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2138,2139,2140,2142,2146,2153,2655,2658,2659,353,2608,2616,349,350,2125,2124,2157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1922,1936,972,973,975,976,1938,1448,1815,1449,1416] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1047,1418,3001,3004,3006,2988,2998,3000,958,959,1438,1446,1441,1449,1468,3040,2989,976] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [352,241,346,347,348,266,267,285,286,287,300,302,2124,224,268,257] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1488,2922,2993,2995,3033,3032,1486,1510,1511,1523,2899,2901] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        