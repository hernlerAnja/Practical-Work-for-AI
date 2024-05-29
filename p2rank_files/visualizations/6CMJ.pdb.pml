
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
        
        load "data/6CMJ.pdb", protein
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
 
        load "data/6CMJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [583,1243,1170,1171,93,147,91,96,97,98,100,757,740,752,754,259,95,510,584,274,275,730,731,732,733,734,735,736,146,148,1145,1154,103,110,1249,1251,276,1250,102,109,122,1244,1245,1248,1252,482,793,784,785,794,764] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2386,2392,2391,2388,2390,3527,3528,3529,2395,2397,2398,2405,2871,3521,3448,3449,3045,3523,3526,3432,3522,3075,3076,3067,3423,3427,3530,2770,2872,2569,2570,3022,3023,3024,3020,2441,2442,2443,2554,3040] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2142,2143,2750,2751,2928,2926,2927,2599,2601,2938,2940,2096,1987,2724,2128,2136,1953,1954,1955,2941,2942,2943,1986,2071,2134,1929,2712,2714,2597,2635,2713] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [824,1689,832,1715,819,823,825,821,822,1141,1142,1419,1417,1408,1396,1130,1146,1147,1132,1134] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3684,3419,3693,3695,3961,3102,3101,3097,3987,3100,3672,3410,3425] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        