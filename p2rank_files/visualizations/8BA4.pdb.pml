
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
        
        load "data/8BA4.pdb", protein
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
 
        load "data/8BA4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4607,4601,4602,6472,6473,6475,6476,6530,6471,5807,5808,4683,4684,4988,4989,6529,5738,5742,4990,4647,4646,4586,4560,4561,4563,5724,5726,5728,5797,4564,5741,7627,7628,7629,7789,6496,6829,6423,6424,6451,6452,6850,4611,4612,7053,7054,7055,7056,5027,5029,5211,6820,6821,6817,6841,6847,6808,5693,7036,7112,7115,7117,7110,7114,7116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [300,301,307,277,283,285,286,260,2170,2242,2243,2592,2169,2571,2580,2217,2219,2221,1508,1509,384,261,688,689,690,263,1427,264,1504,1439,1442,1498,2570,1158,2276,2275,1407,312,346,383,2604,729,727,1394,310,347,311] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2887,2890,2892,2885,2893,2813,2814,2895,3407,2833,2831,2832,312,2198,2197,2214,2218,2221,2222,2170,2242,2243,2169,301,302,307,2159,3325,2894,3405,3406] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [7304,6378,6396,6377,3047,6871,6901,6902,6870,3044,5245,5246,5258,5259,5262,5248,5249,5250,5251,6381] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [4340,5227,5283,4322,4324,4333,4336,5182,5230,5232,5228,5229,5562,4378,5534,5563,5564,5171] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        