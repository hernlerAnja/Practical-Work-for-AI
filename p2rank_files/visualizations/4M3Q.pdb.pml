
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
        
        load "data/4M3Q.pdb", protein
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
 
        load "data/4M3Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [358,359,360,273,274,2306,2307,2308,2295,255,256,257,272,282,279,2109,601,259,1151,1153,821,295,1261,1200,1203,2140,1169,2138,2139,1206,1187,1189,1190,1267,1271,1274,2087,2110,2111] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [4250,4427,5954,5955,5015,4211,4213,4215,4216,5926,6116,6120,4748,4968,6110,6122,4249,4251,4228,4454,4455,5076,5953,5018,4229,4212,5929,5086,5087,5902,5088,5924,4984] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [7151,6690,6691,5360,5358,3288,3289,6688,6689,5237,5240,5241,5243,5244,5228,5239,6671,6672,6670,6662,1425,1428,1424,7119,2844,2846,2817,1543,7133,7150,1545,3304,3305,3306,1429,2826,2827,2825,5227,5230] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1376,1377,6731,6719,2865,1307,2870,2886,6734,2891,1306,6736,6735,5121,5122,6710,2890,5191,5192,6686,2874,5244,6709,6715] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [5121,5122,6710,2890,5191,2936,2891,6736,5118,5119,2949,5136] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [7151,5458,6691,5408,6660,6662,6663,7147,7157,7160,7149,7150,5456] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        