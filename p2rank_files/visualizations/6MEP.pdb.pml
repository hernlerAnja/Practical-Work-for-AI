
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
        
        load "data/6MEP.pdb", protein
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
 
        load "data/6MEP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [323,401,2117,2311,672,671,2304,2305,314,296,297,313,642,399,400,669,670,1159,298,300,1193,1195,2142,2143,2298,1273,1267,1210,1209,1175,1187,1206,1196,1277,1278,1279,2090] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [6027,6182,4653,4654,6194,6188,4381,4382,4383,4278,4279,4280,4295,5093,5150,5151,6026,5059,4863,5094,5095,4862,4282,5071,5075,5076,5077,5078,5079,5080,5090,5092,4624,5041,5043,4305,4296,5163,5157,5161] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2928,2949,2927,2932,2933,2937,2904,2953,2954,2955,6739,6755,6760,1382,6759,6743,1312,1313,1381,5266,5196,6734,5194,5265] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2889,2890,5318,3366,1434,2880,2888,3365,1430,1431,1433,7170,7171,7172,1429,7154,2906,2907,2909,1548,1550,1427,7155,5317,5316,6712,5432,5434,6713,6715,6686,3348,5313,5314,5315,6694,6695,6696] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [5007,4720,4686,5041,5043,5044,5008,4863,4862,4858,4859,4903,4878,4877,4899,4900,6182,4654,6194,6179,6188,6189,6200,4652,6209] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1123,2349,1000,1002,817,2319,2339,814,670,1159,1160,996,2304,2305,2316,956,813,868,959,2298,2326] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5977,5196,5197,5194,5265,3012,5210,5975,6760] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2656,3725,3740,2657,2643,2644,1897,1898,3733,3723] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [6449,6461,6462,6463,7546,7529,7531,7539,5794,5780,5782] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4882,4883,4881,5060,6064,6062,6063,4813,4816] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        