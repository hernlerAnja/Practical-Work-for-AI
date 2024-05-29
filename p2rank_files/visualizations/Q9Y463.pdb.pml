
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
        
        load "data/Q9Y463.pdb", protein
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
 
        load "data/Q9Y463.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [953,958,1010,1007,1009,951,954,956,2110,2112,1574,1587,1130,1114,1562,1566,1585,1591,1599,1613,1648,2021,1590,1993,1619,4609,971,961,965,2005,2114,2115,2117,2119,2121,2113,988,990,1132,1254,1131] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1980,1981,1962,1964,2134,2135,2136,2005,2121,2120,988,979,983,1195,1197,986,1148,1219,1221,1225,1193,1255,1226,1228,971,977,4608,2259,4595,1963,2245,4594,2142,2140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [2257,2259,4595,4598,4600,2291,2293,2278,2280,2538,2539,2263,2276,2277,2279,2281,2260,1997,1996,1979,2493,1636,1638,1640] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        