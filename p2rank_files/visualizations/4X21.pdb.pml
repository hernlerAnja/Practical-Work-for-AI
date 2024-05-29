
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
        
        load "data/4X21.pdb", protein
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
 
        load "data/4X21.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3765,3755,1602,3762,3763,3766,3767,1356,1811,1360,1806,1810,3494,3495,3781,3756,3532,1790,3447,3460,1601,1617,1639,1835,1837,3379,3380,3388,1832,1833,1834,1801,3421,3752,3422,3446,1804,3415,1351,1348,3496,1362] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [200,240,1229,1230,197,238,239,758,588,756,763,335,348,350,351,352,759,208,209,202,204,225,221,1131,805,1155,798,802,794,795,796,779,781,793,780,777,199,193,194,195,205,1226] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2815,2816,2817,2927,2928,2773,2785,2788,2789,2784,2912,3354,3366,3368,3372,3373,2777,3371,2774,3347,3349,3350,3817,3829,2929,3720,3078,3820,3396,3744,3821,3818,3819] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3479,3480,3484,3485,3487,4939,4941,4641,4642,4927,4928,4929,2473,4670,4671,4672,4942,426,422,2461,3471,3472,4938,3512] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4201,3949,3952,3961,4405,4400,4402,4404,4238,4240,4216,4239,4423,4437,4424,4426] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1562,1969,1968,1704,1957,1573,2174,1571,1692] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        