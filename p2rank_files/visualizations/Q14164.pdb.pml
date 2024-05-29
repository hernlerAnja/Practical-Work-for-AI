
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
        
        load "data/Q14164.pdb", protein
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
 
        load "data/Q14164.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [128,129,121,123,127,122,172,173,715,274,706,125,126,289,689,736,738,1094,733,1116,1117,1118,1228,1229,1230,1233,1236,550,694,711,1102,1235,1237,730] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2532,2533,2555,2529,2527,2544,2545,2536,3075,3077,2142,3351,3352,3353,3360,3387,3081,3367,3076,2095,3334,2125,2135,2138,2162,2130,2132,2116,2113,2110,2523,2521,3072,3441,3413,3414,3388,3385] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [307,438,407,155,154,368,159,290,140,160,141,144,1250,1251,400,1253,1256,1252,1083,1235,1237,1066,433,1236,147,1370] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2532,2533,2555,2529,2536,2556,2968,3075,3387,3076,2130,2132,858,2129,2116,853,3413,3388,3408,3412,3385] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3754,3756,3758,5137,5134,3843,3844,3845,3801,5170,3897,5112,3753,3755] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2056,2073,2054,1736,1950,2032,1757,1959,2085,2084,2090,2087,2089,1686,1721,1728] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [828,830,816,819,1723,818,3284,3279,3281,1717,3135,3286,3136] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        