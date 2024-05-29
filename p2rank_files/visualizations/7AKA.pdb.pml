
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
        
        load "data/7AKA.pdb", protein
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
 
        load "data/7AKA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [30,31,429,2935,2936,3917,3918,3919,3936,4214,19,20,21,22,32,3950,9,15,3952,3934,3935,3951,4217,4218,4250,16,427,428,4206,4207,4204,426,416,4227,4219,4223,4,4237,4239,4240,4236,4238,420,226,452,454,227,2747,3155,3156,3157,3180,3181,453,4093,4096,4097,4197,4202,4182,4183,442,443,4184,3182,3146,3130,3131,4164,4165,4166,4167,4168,4169,4163,2931,2941,2944,2946,2925,2928,3090,4074,4075,4076,3959,3947,3948,3949,3115,3150,3176,3178,4089,3183,3184,3212] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [257,258,834,837,237,238,383,385,386,370,200,206,209,211,212,202,204,820,810,811,813,815,816,1240,1241,1252,1268,1366,1267,1269,1361,1369,1362,840,1359,1360,668,669,387] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1513,3131,3132,1228,1229,1243,1244,1520,1523,1524,1525,1383,1389,1390,1384,1212,1210,452,222,227,235,2747,232,450,1369,1241,1242,1252,475,476,480,1382,481,1368,509,447,219,229,237,403,484,2728,2730,1245,2732,2749,2748,1533,1545,1546,1543,2733,1529,1544] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3088,3089,3090,4076,3213,4073,3959,3947,3948,2946,2919,2925,2947,2967,3975,3974,4069,4070,4066,4068,4067,3073,3527,3541,3545,3976,3544,3552,3546,3547,2965,2966,2913,2914,2915,2917,3086,3376,3520,3522,3523] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3115,2758,2748,2759,2926,2930,2931,2927,2928,2929,412,31,2932,219,220,221,214,40,42,215,216,217,32,222,223] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [428,4207,422,425,426,4261,429,430,4550,4182,4183,4185,4187,4184,4186,443] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        