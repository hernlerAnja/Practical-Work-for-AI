
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
        
        load "data/4ZXB.pdb", protein
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
 
        load "data/4ZXB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7943,782,783,759,815,7833,791,792,2091,2097,7819,7945,7815,9,16,825,826,227,228,744,7834,7748,7739,7741,7818,7757,7951,7832,7742,7826,7817,2037,2038,7967,7968] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [6908,6923,6869,6925,7104,7101,7102,7103,7123,6656,6658,6657,6659,6661,6927,6924,6926,6928,6855,6857,6858,6867,6641,6887,6885] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [9500,9502,10508,10510,9681,9494,9496,9705,9712,9713,9504,9505,9508,9509,9745,10568,10569,10571,10572,10573,9743,9746,9747,10549,10551,10545] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [8094,8102,8138,7914,7912,7925,7915,6183,6187,6189,6173,8086,8088,8077,6155,6158,6154,8078] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [7243,7623,7613,7617,7619,7622,7663,7664,7655,7656,7665,7678,7628,7773,7038,7040,7041,7624,7606,7679,7775,7043,7241,7244,7246] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [5120,5118,5149,9945,9952,9951,10306,10307,10308,10297,10291,4085,4086,4095,5091,5158,5160,4096,4097,5166,10273,5162,10283,10276,10278,10279,10282,10286] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [10318,10319,9920,10302,10310,10316,10317,10213,10216,10292,10293,9902,10320,10321,10195,10200,10330,10299,3546,3547,3549,3522,3545,3558,3560,10285] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4961,4963,4975,4965,4966,4967,9797,5125,9806,9794,9795,10616,10623,10626,10619,10621,10603,4974,5126,9799] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [5856,5853,5857,6027,5618,5748,6094,6026,5633,6109,6023,5734,5735,5732,5743,6008,6010,6011,5747,6009] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1848,1855,7902,7904,7964,7975,1849,1850,8033,8035,8036,8037,8298,8299,8064] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [7170,7171,7411,7414,7362,7152,6975,7181,6974,6977] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        