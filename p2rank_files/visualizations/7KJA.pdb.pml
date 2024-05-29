
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
        
        load "data/7KJA.pdb", protein
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
 
        load "data/7KJA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8362,8423,6431,6437,6452,6499,6500,6475,6472,7612,8422,7575,7608,6751,7593,7665,7708,7709,6423,7643,7642,7654,7655,7661,7706,7628,6401,7611,7595,6398,6399,6397,6414,8389,8579,8581,7065,7117,8593,8594,6784,7061,7063,7064,6441,6456,6459,6461,7002,6783,7014,7119,7268,7272,7563,7564,6781,6782,8597,8598,8600,8599,8626,6445] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [896,897,898,594,865,1677,517,518,526,532,595,2503,2692,2693,2536,1382,1689,1775,493,494,496,2537,1769,1822,509,510,515,492,1824,1779,1726,1725,1722,1727,1742,2699,1178,1179,539,536,554,556,2700,2703,2705,1233] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [5597,5598,5599,9214,9215,9171,9289,9313,10480,10494,10496,10497,9618,9622,9166,9605,9608,9593,10415,9581,10442,9104,9564,9101,9579,9582] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [7983,7977,7978,7979,8023,8493,8515,8510,8509,8514,7988,7927,7932,8479,8492,7234,8027,8044,7218,7220,7235,8025] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3431,4652,3430,4596,4598,3718,3730,3742,4571,3759,4573,3716,3198,3307,3309,3407,3410,3308,4650,4636,4586,3717] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4784,4950,5688,5690,5691,5692,5743,5669,5736,5737,5738,5739,5675,7766,5803,4938,4785] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2100,2639,2643,2098,2102,2093,1334,2624,2629,2593,2606,2607,1332,2091,2092,2097] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [7697,8363,8365,9125,8700,9227,9230,8701,5790,7771,5724,9226,9203] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2714,1131,1133,1128,1175,1178,539,536,547,551,554,556,2705,526,532,897,898,1116,1126] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3997,3084,3388,3676] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        