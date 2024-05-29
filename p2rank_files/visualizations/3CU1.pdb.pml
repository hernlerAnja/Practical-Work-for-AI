
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
        
        load "data/3CU1.pdb", protein
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
 
        load "data/3CU1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2075,3662,3663,3664,2074,3661,3684,3383,2775,2776,3384,2058,2061,2029,2028,2053,2021,3362,3363,1957,1959,1960,1961,1962,2094,2016,2089,2067,2069,2073,2072,2014,2017,2632,2634,3545,3546,3547,1988,2774,2780,2786,1986,1984] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [902,1783,1786,1785,896,897,202,207,205,1506,173,162,165,218,219,221,1505,198,1668,128,131,132,160,161,101,212,153,158,785,103,104,245,233,216,213] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3580,3651,3652,3653,3656,3579,220,3569,3609,3610,3611,3655,535,536,537,538,539,3538,3535,3536,3537,503,505,3539,3543,3544,534,575,3545,3546,3547] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1669,905,906,1778,1791,1656,1657,1701,1702,1777,1774,2387,2388,1661] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [81,1937,1952,3545,3546,1954,106,104,105,1667,1668,96,98,93,99,1955,1958,1960,1961,1962,2095,2097] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1674,1676,2368,2146,97,2386,2397,2116,2400,2119,2148,92,121,122,123,95,93,94,1928,1929,96,1665,1664,1663,1670,1671] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2689,3316,3318,3317,3392,3393,2733,2735,2690,3002,3003,3004,3709,3710,3711] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [106,241,243,245,534,262,533,1953,1951,1952,3546,535,537,219,220] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [504,505,520,524,526,528,3538,3611,3586,3587] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3552,537,519,3542,3543,3549,1978,1979,531,1953,1951,1952,1949,1950,72,73,546,548,267] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        